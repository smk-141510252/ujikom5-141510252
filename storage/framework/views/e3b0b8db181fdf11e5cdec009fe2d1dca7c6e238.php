<?php $__env->startSection('content'); ?>
 <br><br><br><br><br><br>
 <div class="right_col" role="main">
          <div class="">
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <center><h2>Edit Data Golongan</h2></center>
                    <ul class="nav navbar-right panel_toolbox">
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
    <?php echo Form::model($data,['method' => 'PATCH','route'=>['Golongan.update',$data->id],'class' => 'form-horizontal form-label-left']); ?>

    <div id="pegawai">
      <div class="form-group">
          <div class="control-label col-md-3 col-sm-3 col-xs-12">
              <?php echo Form::label('Kode Golongan', 'Kode Golongan '); ?>

               <span class="required">*</span>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
              <?php echo Form::text('Kode_golongan',null,['class'=>'form-control col-md-7 col-xs-12']); ?>

              <h4 class="text-danger"><?php echo '<br><br>'.$errors->first('NIP', '<p>Form input harus diisi!!</p>') ?></h4>
          </div>
      </div>
      <div class="form-group">
          <div class="control-label col-md-3 col-sm-3 col-xs-12">
              <?php echo Form::label('Nama Golongan', 'Nama Golongan '); ?>

               <span class="required">*</span>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
              <?php echo Form::text('Nama_golongan',null,['class'=>'form-control col-md-7 col-xs-12']); ?>

              <h4 class="text-danger"><?php echo '<br><br>'.$errors->first('NamaPeg', '<p>Form input harus diisi!!</p>') ?></h4>
          </div>
      </div>
            <div class="form-group">
          <div class="control-label col-md-3 col-sm-3 col-xs-12">
              <?php echo Form::label('Besaran Uang', 'Besaran Uang '); ?>

               <span class="required">*</span>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
              <?php echo Form::number('Besaran_uang',null,['class'=>'form-control col-md-7 col-xs-12']); ?>

              <h4 class="text-danger"><?php echo '<br><br>'.$errors->first('NamaPeg', '<p>Form input harus diisi!!</p>') ?></h4>
          </div>
      </div>
      <div class="form-group">
          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
              <?php echo Form::submit('Save', ['class' => 'btn btn-success form-control']); ?>

          </div>
      </div>
    </div>
    <?php echo Form::close(); ?>



<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>