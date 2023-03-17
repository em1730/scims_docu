 <div class="row">
     <div class="col-lg-8">

         <form role="form" method="post" action="<?php htmlspecialchars("PHP_SELF"); ?>">
             <div class="float-topright">
                 <?php echo $alert_msg; ?>
             </div>
             <div class="card card-success card-outline ">
                 <div class="card-header ">
                     <h5 class="m-0">Receive Documents</h5>
                 </div>
                 <div class="card-body">




                     <!-- Remarks -->



                     <!-- ANOTHER COLUMN -->

                 </div>
             </div><!-- /.card -->
     </div>
     <!-- /.col-md-6 -->

     <div class="col-lg-4">


         <div <?php if ($department == 'BAC') { ?> class="card card-success" <?php } else { ?> class="card card-success card-outline" <?php } ?>>
             <div class="card-header ">
                 <h6 class="m-0">BAC</h6>
             </div>
             <div class="card-body">

                 <!-- for PR -->
                 <div class="row">
                     <!-- <div class="col-md-4" style="text-align: right;padding-top: 3px;"> -->
                     <label>PR No.:</label>
                     <!-- </div> -->
                     <div class="col-md-8" style="width: 100;">
                         <input <?php if ($department != 'BAC') { ?> readonly <?php } ?> type="text" class="form-control" id="pr_no" name="pr_number" placeholder="PR Number" value="<?php echo $pr_no; ?>">
                     </div>
                 </div></br>
                 <!-- for PR -->

                 <!-- for PO -->
                 <div class="row">
                     <!-- <div class="col-md-4" style="text-align: right;padding-top: 3px;"> -->
                     <label>PO No.:</label>
                     <!-- </div> -->
                     <div class="col-md-8">
                         <input <?php if ($department != 'BAC') { ?> readonly <?php } ?> type="text" class="form-control" id="po_no" name="po_number" placeholder="PO Number" value="<?php echo $po_no; ?>">
                     </div>
                 </div>
                 <!-- for PO -->

             </div>
         </div>

         <!-- /.col-md-6 -->

         <!-- BUDGET -->
         <div class="col-lg-14">
             <div <?php if ($department == 'CBO') { ?> class="card card-success" <?php } else { ?> class="card card-success card-outline" <?php } ?>>
                 <div class="card-header">
                     <h6 class="m-0">BUDGET</h6>
                 </div>
                 <div class="card-body">

                     <!-- for PR -->
                     <div class="row">

                         <!-- <div class="col-md-8" style="text-align: right;padding-top: 5px;"> -->
                         <div class="col-md-6">
                             <div class="form-check">
                                 &nbsp; &nbsp;<input <?php if ($department != 'CBO') { ?> disabled <?php } ?> <?php if ($prevyear == 1) echo 'checked="checked"'; ?> type="checkbox" class="form-check-input" id="prev_year" name="prev_year" value="prevyear">
                                 <label class="form-check-label" for="prev_year">Previous Year?</label>
                             </div>
                         </div></br>

                         <div class="col-md-6  ">
                             <div class="form-check">
                                 &nbsp; &nbsp;<input <?php if ($department != 'CBO') { ?> disabled <?php } ?> <?php if ($new_obr == 1) echo 'checked="checked"'; ?> type="checkbox" class="form-check-input" id="new_obr" name="new_obr" value="prevyear">
                                 <label class="form-check-label" for="exampleCheck1">New OBR No.?</label>
                             </div>

                         </div></br>
                     </div></br>

                     <div class="row">
                         <!-- <div class="col-md-4" style="text-align: right;padding-top: 5px;"> -->
                         <label>OBR No.:</label>
                         <!-- </div> -->
                         <div class="col-md-8">
                             <input type="text" readonly class="form-control" id="obr_no" name="obr_number" placeholder="OBR Number" value="<?php echo
                                                                                                                                            $obr_no; ?>" required>
                         </div>
                     </div>
                     <!-- for PR -->

                 </div>
             </div>
         </div>
         <!-- BUDGET -->

         <!-- ACCOUNTING -->
         <div class="col-lg-14">
             <div <?php if ($department == 'ACCTG') { ?> class="card card-success" <?php } else { ?> class="card card-success card-outline" <?php } ?>>
                 <div class="card-header">
                     <h6 class="m-0">ACCOUNTING</h6>
                 </div>
                 <div class="card-body">
                     <div class="row">

                         <!-- <div class="col-md-4" style="text-align: right;padding-top: 5px;"> -->
                         <!-- <div class="form-group"> -->
                         <label>Fund:</label>
                         <!-- </div>                                      -->
                         <div class="col-md-8">
                             <select <?php if ($department != 'ACCTG') { ?> disabled <?php } ?> class="form-control select2" style="width: 100%;" id="select_account" name="account" value="<?php echo $account; ?>">
                                 <option>Please select...</option>
                                 <?php while ($get_account = $get_all_account_data->fetch(PDO::FETCH_ASSOC)) { ?>

                                     <?php
                                        //if $get_author naa value, check nato if equals sa $get_author1['fullname']
                                        //if equals, put 'selected' sa option
                                        $selected = ($account == $get_account['code']) ? 'selected' : '';

                                        ?>

                                     <option <?= $selected; ?> value="<?php echo $get_account['code']; ?>"><?php echo $get_account['account']; ?></option>
                                 <?php } ?>
                             </select>
                         </div>
                     </div><br>

                     <div class="row">
                         <!-- <div class="col-md-4" style="text-align: right;padding-top: 5px;"> -->
                         <label>DV No.:</label>
                         <!-- </div> -->
                         <div class="col-md-8">
                             <input <?php if ($department != 'ACCTG') { ?> readonly <?php } ?> type="text" class="form-control" id="dv_no" name="dv_number" placeholder="DV Number" value="<?php echo
                                                                                                                                                                                            $dv_no; ?>">
                         </div>
                     </div>

                     <!-- OBR -->
                 </div>

             </div>
         </div>
         <!-- ACCOUNTING -->

         <!-- TREASURER -->
         <div class="col-lg-14">
             <div <?php if ($department == 'CTO') { ?> class="card card-success" <?php } else { ?> class="card card-success card-outline" <?php } ?>>
                 <div class="card-header">
                     <h6 class="m-0">TREASURER</h6>
                 </div>
                 <div class="card-body">



                     <!-- Account Number & Cheque No. -->
                     <div class="row">
                         <!-- <div class="col-md-4" style="text-align: right;padding-top: 5px;"> -->
                         <label>Account No.:</label>
                         <!-- </div> -->
                         <div class="col-md-8">
                             <input type="text" <?php if ($department != 'CTO') { ?> readonly <?php } ?> class="form-control" id="dv_no" name="acct_number" placeholder="DV Number" value="<?php echo
                                                                                                                                                                                            $acct_no; ?>" required>
                         </div>
                     </div><br>

                     <div class="row">
                         <!-- <div class="col-md-4" style="text-align: right;padding-top: 5px;"> -->
                         <label>Cheque No.:</label>
                         <!-- </div> -->
                         <div class="col-md-8">
                             <input <?php if ($department != 'CTO') { ?> readonly <?php } ?> type="text" readonly class="form-control" id="cheque_no" name="cheque_number" placeholder="Cheque Number" value="<?php echo
                                                                                                                                                                                                                $cheque_no; ?>" required>
                         </div>
                     </div>

                     <!-- Account Number & Cheque No. -->

                 </div>
             </div>
             <!-- TREASURER -->
         </div>


         <aside class="control-sidebar control-sidebar-dark">
             <div class="modal-header">
                 <h4 class="modal-title">SETTINGS</h4>
             </div>

             <div class="modal-body">

                 <div class="box-body">

                     <div class="form-group" <?php if ($department != 'CBO') { ?> style="display:none" <?php } ?>>
                         <h6 class="modal-title">Update Previous OBR No:</h6>
                         <input type="text" name="update_prevobr" id="update_prevobr" class="form-control" value="<?php echo $settings_prevobr; ?>" required>
                     </div>

                     <div class="form-group" <?php if ($department != 'CBO') { ?> style="display:none" <?php } ?>>
                         <h6 class="modal-title">Update OBR No:</h6>
                         <input type="text" name="update_obr" id="update_obr" class="form-control" value="<?php echo  $settings_obr; ?>" required>
                     </div>

                     <div class="box-body">
                         <div class="form-group" <?php if ($department != 'ACCTG') { ?> style="display:none" <?php } ?>>
                             <h6 class="modal-title">Update DV No:</h6>
                             <input type="text" name="update_dv" id="update_dv" class="form-control" value="<?php echo $settings_dv; ?>" required>
                         </div>


                         <!-- <div class="col-md-2" style="text-align: right;padding-top: 5px;"> -->
                         <!-- <div class="form-group"> -->
                         <!-- <label>Document Type:</label>
                                            </div> -->



                         <!-- </div> -->

                         <!-- <div class="form-group">
                    <label>Date:</label>
                    <label id="lblDate"></label>
                    </div>
                    <div class="form-group">
                    <label>Time:</label>
                    <label id="lblTime"></label>
                    </div>
                    <div class="form-group">
                    <label>Type:</label>
                    <label id="lblType"></label>
                    </div>
                    <div class="form-group">
                    <label>Particulars:</label>
                    <label id="lblParticulars"></label>
                    </div>                   
                    <div class="form-group">
                    <label>Origin:</label>
                    <label id="lblOrigin"></label>
                    </div>
                    <div class="form-group">
                    <label>Destination:</label>
                    <label id="lblDestination"></label>
                    </div>
                    <div class="form-group">
                    <label>Remarks:</label>
                    <label id="lblRemarks"></label>
                    </div>

                    <div class="form-group">
                    <h5 class="blinking"  id="lblMessage"> </h5>
                    </div> -->

                     </div>
                 </div>
             </div>
         </aside>


     </div>