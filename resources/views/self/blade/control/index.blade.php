@extends('default.layout.layout')

@section('content')
<section class="wrapper site-min-height">
  <div class="row mt">
    <div class="col-lg-12">
      <div class="row content-panel">
        <h2 class='violet'>Control Panel</h2>
        <hr/>
        <div class="col-md-4">
          <h4 class=''>Backup Manager</h4>
            <a href="{{route('site.backup')}}" class="btn btn-lg btn-theme btn-block">Create Backup</a><br/>
            <a href="{{route('site.download')}}" class="btn btn-lg btn-theme btn-block">Download Backup</a>
        </div>
        <div class="col-md-4">
          <h4 class=''>Current Theme : {{strtoupper(bepc\Models\Setting::where('keyname', '=' , 'theme')->first()->value)}}</h4>
            <a href="{{route('setting.change' ,[bepc\Models\Setting::where('keyname', '=' , 'theme')->first()->id , 'violet'])}}" class="btn btn-lg btn-theme btn-block">Use Violet</a><br/>
            <a href="{{route('setting.change' ,[bepc\Models\Setting::where('keyname', '=' , 'theme')->first()->id , 'blue'])}}" class="btn btn-lg btn-theme btn-block">Use Blue</a><br/>
             <a href="{{route('setting.change' ,[bepc\Models\Setting::where('keyname', '=' , 'theme')->first()->id , 'yellow'])}}" class="btn btn-lg btn-theme btn-block">Use Yellow</a>
        </div>

      </div><!-- /row -->    
    </div><! --/col-lg-12 -->
  </div><! --/container -->
</section><! --/wrapper -->
@stop

@section('script')
@stop
