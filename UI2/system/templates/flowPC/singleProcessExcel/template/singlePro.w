<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;">{{#each datas}}
    <div component="$UI/system/components/justep/data/bizData" xid="{{data_xid}}"
      directDelete="true" autoLoad="false" concept="{{data_concept}}" orderBy="{{data_orderBy}}"
      columns="{{data_relations}}" autoNew="true"> 
      <reader action="{{data_reader}}"/>  
      <writer action="{{data_writer}}"/>  
      <creator action="{{data_creator}}"/> 
    </div>{{/each}}
  </div>  
  <div component="$UI/system/components/justep/process/process" xid="process"
    data="{{form_data}}"/>  
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu"
    xid="moreMenu" opacity="0" anchor="moreBtn" direction="left-bottom"> 
    <div class="x-popMenu-overlay" xid="moreMenuOverlay"/>  
    <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content"
      xid="moreContent"> 
      <li class="x-menu-item" xid="backItem"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link  btn-icon-left"
          xid="backBtn" onClick="{operation:'process.back'}"> 
          <i xid="i8"/>  
          <span xid="span6"/> 
        </a> 
      </li>  
      <li class="x-menu-item" xid="suspendItem"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link  btn-icon-left"
          xid="suspendBtn" onClick="{operation:'process.suspend'}"> 
          <i xid="i3"/>  
          <span xid="span3"/> 
        </a> 
      </li>  
      <li class="x-menu-item" xid="abortItem"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link  btn-icon-left"
          xid="abortBtn" onClick="{operation:'process.abort'}"> 
          <i xid="i4"/>  
          <span xid="span4"/> 
        </a> 
      </li>  
      <li class="x-menu-item" xid="chartItem"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link  btn-icon-left"
          xid="chartBtn" onClick="{operation:'process.showChart'}"> 
          <i xid="i5"/>  
          <span xid="span5"/> 
        </a> 
      </li>  
      <li class="x-menu-item" xid="recordItem"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          xid="recordBtn" onClick="{operation:'process.processRecord'}"> 
          <i xid="i55"/>  
          <span xid="span55"/> 
        </a> 
      </li> 
    </ul> 
  </div>  
  <div xid="view"> 
    <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter form-inline"
      xid="mainBar"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        xid="advanceBtn" onClick="{operation:'process.advance'}"> 
        <i xid="i2"/>  
        <span xid="span2"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        xid="saveBtn" onClick="{operation:'{{form_data}}.save'}"> 
        <i xid="i1"/>  
        <span xid="span1"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-label"
        label="更多" xid="moreBtn" onClick="{operation:'moreMenu.show'}" icon="icon-ios7-more"> 
        <i xid="i15" class="icon-ios7-more"/>  
        <span xid="span15">更多</span> 
      </a> 
    </div>  
    <div xid="content"> 
      <div xid="mainForm" class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form"> 
        <div component="$UI/system/components/justep/excelLayout/excelLayout"
          class="x-excel-layout" style="width:100%; height: 100%;" xid="excelLayout"
          src="{{fileName}}">{{#each form}}
          <label xid="T{{form_field}}L" bind-text="{{form_data}}.label('{{form_field}}')"/>{{#if form_selectDataID}}
          <select xid="T{{form_field}}F" class="form-control xui-autofill" component="$UI/system/components/justep/select/select"
            bind-ref="{{form_data}}.ref('{{form_refID}}')" bind-labelRef="{{form_data}}.ref('{{form_field}}')"
            bind-options="{{form_selectDataID}}" bind-optionsLabel="{{form_selectLabelName}}"
            bind-optionsValue="{{form_selectConcept}}" bind-optionsCaption="请选择..."/>{{else}}{{#if form_password}}
          <input xid="T{{form_field}}F" component="$UI/system/components/justep/input/password"
            class="form-control x-edit xui-autofill" data="{{form_data}}" bind-ref="{{form_data}}.ref('{{form_field}}')"/>{{/if}}{{#if form_range}}
          <input xid="T{{form_field}}F" component="$UI/system/components/justep/input/range"
            class="x-edit xui-autofill" bind-ref="{{form_data}}.ref('{{form_field}}')"
            min="-10000" max="10000"/>{{/if}}{{#if form_output}}
          <output xid="T{{form_field}}F" class="form-control xui-autofill" component="$UI/system/components/justep/output/output"
            bind-ref="{{form_data}}.ref('{{form_field}}')"/>{{/if}}{{#if form_textarea}}
          <textarea xid="T{{form_field}}F" class="form-control xui-autofill" component="$UI/system/components/justep/textarea/textarea"
            bind-ref="{{form_data}}.ref('{{form_field}}')"/> {{/if}}{{#if form_input}}
          <input xid="T{{form_field}}F" class="form-control xui-autofill" component="$UI/system/components/justep/input/input"
            bind-ref="{{form_data}}.ref('{{form_field}}')"/>{{/if}}{{/if}} {{/each}}
        </div> 
      </div> 
    </div> 
  </div> 
</div>
