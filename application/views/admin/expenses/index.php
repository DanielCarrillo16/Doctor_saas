<div class="content-wrapper">

  <!-- Main content -->
  <section class="content container">


    <div class="box add_area <?php if(isset($page_title) && $page_title == "Edit"){echo "d-block";}else{echo "hide";} ?>">
      <div class="box-header with-border">
        <?php if (isset($page_title) && $page_title == "Edit"): ?>
          <h3 class="box-title"><?php echo trans('edit') ?></h3>
        <?php else: ?>
          <h3 class="box-title"><?php echo trans('add_expense') ?> </h3>
        <?php endif; ?>

        <div class="box-tools pull-right">
          <?php if (isset($page_title) && $page_title == "Edit"): ?>
            <a href="<?php echo base_url('admin/payment/expenses') ?>" class="pull-right btn btn-light-secondary btn-sm"><i class="fa fa-angle-left"></i> <?php echo trans('back') ?></a>
          <?php else: ?>
            <a href="#" class="text-right btn btn-light-secondary cancel_btn"><i class="fa fa-bars"></i> <?php echo trans('all_expenses') ?></a>
          <?php endif; ?>
        </div>
      </div>

      <div class="box-body">
        <form id="cat-form" method="post" enctype="multipart/form-data" class="validate-form" action="<?php echo base_url('admin/payment/add_expense')?>" role="form" novalidate>

          <input type="hidden" name="id" value="<?php echo html_escape($expense['0']['id']); ?>">
          <!-- csrf token -->
          <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>" value="<?php echo $this->security->get_csrf_hash();?>">

          <!-- FORMULARIO DE GASTOS -->
          <div class="form-group">
            <label><?php echo trans('concept') ?><span class="text-danger">*</span></label>
            <input type="text" class="form-control"  name="concept" value="<?php echo html_escape($expense[0]['concept']); ?>" >
          </div>
          <div class="form-group">
            <label><?php echo trans('description') ?><span class="text-danger">*</span></label>
            <input type="text" class="form-control"  name="description" value="<?php echo html_escape($expense[0]['description']); ?>" >
          </div>
          <div class="form-group">
            <label><?php echo trans('amount') ?><span class="text-danger">*</span></label>
            <input type="number" class="form-control"  name="amount" value="<?php echo html_escape($expense[0]['amount']); ?>" >
          </div>
          <div class="form-group">
            <label><?php echo trans('notes') ?></label>
            <textarea class="form-control" name="notes" rows="3" value=""><?php echo html_escape($expense[0]['notes']); ?></textarea>
          </div>

       
          <div class="row m-t-30">
            <div class="col-sm-12">
              <?php if (isset($page_title) && $page_title == "Edit"): ?>
                <button type="submit" class="btn btn-primary pull-left"><i class="ficon flaticon-check"></i> <?php echo trans('save-changes') ?></button>
              <?php else: ?>
                <button type="submit" class="btn btn-primary pull-left"><i class="ficon flaticon-check"></i> <?php echo trans('save') ?></button>
              <?php endif; ?>
            </div>
          </div>

        </form>

      </div>

    </div>


    <?php if (isset($page_title) && $page_title != "Edit"): ?>

    <div class="box list_area">
      <div class="box-header">
        <?php if (isset($page_title) && $page_title == "Edit"): ?>
          <h3 class="box-title">Edit service <a href="<?php echo base_url('admin/payment') ?>" class="pull-right btn btn-light-secondary btn-sm mt-15"><i class="fa fa-angle-left"></i> <?php echo trans('back') ?></a></h3>
        <?php else: ?>
          <h3 class="box-title"><?php echo trans('expenses') ?> </h3>
        <?php endif; ?>

        <div class="box-tools pull-right">
         <a href="#" class="pull-right btn btn-light-secondary btn-sm add_btn"><i class="fa fa-plus"></i> <?php echo trans('add_expense') ?> </a>
        </div>
      </div>

      <div class="box-body p-0 mt-20">
        
        <div class="col-md-12 col-sm-12 col-xs-12 scroll table-responsive">
            <table class="table table-hover" id="dg_table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><?php echo trans('concept') ?></th>
                        <th><?php echo trans('description') ?></th>
                        <th><?php echo trans('date') ?></th>
                        <th><?php echo trans('amount') ?></th>
                        <th><?php echo trans('actions') ?></th>
                    </tr>
                </thead>
                <tbody>
                  <?php $i=1; foreach ($expenses as $expense): ?>
                    <tr id="row_<?php echo html_escape($expense->id); ?>">
                        
                        <td><?= $i; ?></td>
                        <td><?php echo html_escape($expense->concept); ?></td>
                        <td><?php echo character_limiter($expense->description, 80); ?></td>
                        <td><?php echo my_date_show($expense->created_at); ?> </td>
                        <td><?php echo html_escape(settings()->currency_symbol) ?><?php echo html_escape($expense->amount); ?></td>
                        <td class="actions" width="12%">

                        <?php if (is_admin() || is_user() && user()->id == $expense->user_id): ?>
                        
                          <a href="<?php echo base_url('admin/payment/edit_expense/'.html_escape($expense->id));?>" class="on-default edit-row" data-placement="top" title="Edit"><i class="fa fa-pencil"></i></a> &nbsp; 

                          <a data-val="page" data-id="<?php echo html_escape($expense->id); ?>" href="<?php echo base_url('admin/payment/delete_expense/'.html_escape($expense->id));?>" class="on-default remove-row delete_item" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash-o"></i></a>

                        <?php else: ?>

                          <a href="#" class="on-defaults text-muted" data-placement="top" title="Edit"><i class="fa fa-ban"></i> <?php echo trans('disabled') ?></a> &nbsp; 

                        <?php endif ?>


                      </td>
                    </tr>
                    
                  <?php $i++; endforeach; ?>
                </tbody>
            </table>
        </div>

      </div>

    
    </div>
    <?php endif; ?>



  </section>
</div>
