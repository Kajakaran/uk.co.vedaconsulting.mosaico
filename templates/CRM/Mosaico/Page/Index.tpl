{literal}
  <body style="overflow: auto; text-align: center; background-color: #3f3d33; padding: 0; margin: 0; display: none;" data-bind="visible: true">
    <!-- ko if: edits().length -->
    <div style="overflow-y: auto; max-height: 200px; z-index: 10; position: relative; padding: 1em; background-color: #f1eee6;">
    <!-- ko ifnot: $root.showSaved --><span>You have saved contents in this browser! <a class="resumeButton" href="#" data-bind="click: $root.showSaved.bind(undefined, true);"><i class="fa fa-plus-square"></i> Show</a></span><!-- /ko -->
    <!-- ko if: $root.showSaved -->
    <table id="savedTable" align="center" cellspacing="0" cellpadding="8" style="padding: 5px; ">
    <caption>Email contents saved in your browser <a href="#" class="resumeButton" data-bind="click: $root.showSaved.bind(undefined, false);"><i class="fa fa-minus-square"></i> Hide</a></caption>
      <thead><tr>
        <th>Id</th><th>Name</th><th>Created</th><th>Last changed</th><th>Operations</th>
      </tr></thead>
    <tbody data-bind="foreach: edits">
      <tr>
        <td align="left"><a href="#" data-bind="attr: { href: '{/literal}{crmURL p='civicrm/mosaico/editor' h=0 q='snippet=2' f=''}{literal}'+key }"><code>#<span data-bind="text: key">key</span></code></a></td>
        <td style="font-weight: bold" align="left"><a href="#" data-bind="attr: { href: '{/literal}{crmURL p='civicrm/mosaico/editor' h=0 q='snippet=2' f=''}{literal}'+key }"><span data-bind="text: name">versamix</span></a></td>
        <td><span data-bind="text: typeof created !== 'undefined' ? $root.dateFormat(created) : '-'">YYYY-MM-DD</span></td>
        <td><span style="font-weight: bold" data-bind="text: typeof changed !== 'undefined' ? $root.dateFormat(changed) : '-'">YYYY-MM-DD</span></td>
        <td>
        <a class="operationButton" href="#" data-bind="attr: { href: '{/literal}{crmURL p='civicrm/mosaico/editor' h=0 q='snippet=2' f=''}{literal}'+key }" title="edit"><i class="fa fa-pencil"></i></a>
        <!--(<a href="#" data-bind="click: $root.renameEdit.bind(undefined, $index())" title="rinomina"><i class="fa fa-trash-o"></i></a>)-->
        <a class="operationButton" href="#" data-bind="click: $root.deleteEdit.bind(undefined, $index())" title="delete"><i class="fa fa-trash-o"></i></a>
        </td>
      </tr>
    </tbody>
    </table>
    <!-- /ko -->
    </div>
    <!-- /ko -->
    <div class="content" style="background-color: white; margin-top: -20px; padding-top: 15px; background-origin: border; padding-bottom: 2em">
    <div class="ribbon">Try first templates: more to come soon, stay tuned!</div>
    <div data-bind="foreach: templates">
      <div class="template template-xx" style="" data-bind="attr: { class: 'template template-'+name }">
        <div class="description" style="padding-bottom:5px"><b data-bind="text: name">xx</b>: <span data-bind="text: desc">xx</span></div>
        <a href="#" data-bind="click: $root.newEdit.bind(undefined, name), attr: { href: '{/literal}{crmURL p='civicrm/mosaico/editor' h=0 q='snippet=2' f='templates/'}{literal}'+name+'/template-'+name+'.html' }">
          <img src width="100%" alt="xx" data-bind="attr: { src: '{/literal}{$extResUrl}{literal}/packages/mosaico/templates/'+name+'/edres/_full.png' }">
        </a>
      </div>
    </div>
    </div>
  </body>
{/literal}
