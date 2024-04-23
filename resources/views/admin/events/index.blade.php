@extends('layouts.admin')
@section('styles')
<style>
    .completed{
        color: #dc3545;
        font-weight: bolder;
    }

    .open{
        color: #28a745;
        font-weight: bolder;
    }
    .closed{
        color: #ffc107;
        font-weight: bolder;
    }
</style>
@endsection
@section('content')
@php
    function encrypt_data_url($data) {
        $key = "sabungan-casino-game-fest";
        $plaintext = $data;
        $ivlen = openssl_cipher_iv_length($cipher = "AES-128-CBC");
        $iv = openssl_random_pseudo_bytes($ivlen);
        $ciphertext_raw = openssl_encrypt($plaintext, $cipher, $key, $options = OPENSSL_RAW_DATA, $iv);
        $hmac = hash_hmac('sha256', $ciphertext_raw, $key, $as_binary = true);
        $ciphertext = base64_encode($iv . $hmac . $ciphertext_raw);
        return $ciphertext;
    }
@endphp
    <div class="row">
        <div class="col-md-12">
            <div class="card" style="background-color:#343a40; color:white;">
                <div class="card-header">
                    <strong>CREATED EVENTS</strong>
                </div>
                <div class="card-body">
                    <table class="table table-bordered table-condensed">
                        <thead>
                            <th>ID</th>
                            <th>Event Name</th>
                            <th>Fight URL</th>
                            <th>Date Created</th>
                            <th>Status</th>
                            <th>Action/s</th>
                        </thead>
                        <tbody>
                            @foreach ($events as $event)
                            <tr>
                                <td>{{$event->event_id}}</td>
                                <td>{{$event->name}}</td>
                                <td>
                                    @php
                                        $encrypted_text = encrypt_data_url($event->live_url);
                                        $string = $encrypted_text;
                                        $chunks = str_split($string, strlen($string) / 3);
                                    @endphp
                                    {{ $chunks[0] }}
                                    <br>
                                    {{ $chunks[1] }}
                                    <br>
                                    {{ $chunks[2] }}
                                </td>
                                <td>{{date('m/d/Y',strtotime($event->created_at))}}</td>
                                <td><span class="{{$event->status}}">{{strtoupper($event->status)}}</span></td>
                                <td>
                                    <a href="{{ route('show.event', $event->id) }}"
                                        class="btn btn-primary btn-sm">View</a>
                                    @if ($event->game_id == 1)
                                    @elseif($event->game_id == 17)
                                        {{-- <a href="{{ route('show.event.rg', $event->id) }}" class="btn btn-primary btn-sm">View</a> --}}
                                    @elseif($event->game_id == 14)
                                        {{-- <a href="{{ route('show.event.cg', $event->id) }}" class="btn btn-primary btn-sm">View</a> --}}
                                    @elseif($event->game_id == 26)
                                        {{-- <a href="{{ route('show.event.pl', $event->id) }}" class="btn btn-primary btn-sm">View</a> --}}
                                    @elseif($event->game_id == 27)
                                        {{-- <a href="{{ route('show.event.dp', $event->id) }}" class="btn btn-primary btn-sm">View</a> --}}
                                    @else
                                        {{-- <a href="{{ route('game.declare', $event->id) }}" class="btn btn-primary btn-sm">View</a> --}}
                                    @endif

                                    @if ($event->status != 'completed')
                                        <a href="{{ route('edit.event', $event->id) }}"
                                            class="btn btn-success btn-sm">Edit</a>
                                    @endif
                                    {{-- @if ($event->status == 'completed') --}}
                                    {{-- @endif --}}
                                    <a href="{{ route('show.fights', $event->id) }}"
                                        class="btn btn-warning btn-sm">Fights</a>

                                    @if(Auth::user()->type == 'super-admin')
                                        <button data-url="{{ route('delete.event', $event->id) }}"
                                            data-status="{{ $event->status }}"
                                            class="btn btn-danger btn-del-event btn-sm">Delete</button>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
              </div>
        </div>
    </div>
@endsection
@section('scripts')

<script>
    $(document).ready(function () {
        $('.table').DataTable({
            destroy: true,
            scrollX:true,
            scrollY:true,
        });
        $('.table').css({"width":"100%"});
        $('.table').on('click','.btn-del-event',function(){
            let url = $(this).data('url');
            Swal.fire({
                title: 'Are you sure you want to delete this event?',
                text: "",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href=url;
                }
            })
        })
    });
</script>
@endsection
