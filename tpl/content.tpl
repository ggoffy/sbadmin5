<main>
    <{if $xoops_page == "index" && $show_dashboard}>
        <{xoStats}>
        <div class="container-fluid px-4 theme-dashboard">
            <h1 class="mt-4"><{$smarty.const.THEME_DASHBOARD}></h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
            <div class="row">
                <{if !empty($dashboard_comments)}>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-primary text-white mb-4">
                            <div class="card-body"><i class="fa fa-user-circle fa-2x"></i>&nbsp;<b><{$smarty.const.THEME_COMMENTS}></b></div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <table cellspacing="1" class="outer width100">
                                    <{foreach item=comment from=$dashboard_comments.comments|default:null}>
                                        <tr class="<{cycle values='even,odd'}>">
                                            <td class="txtcenter"><img src="<{$xoops_url}>/images/subject/<{$comment.icon}>" alt=""/></td>
                                            <td><{$comment.title}></td>
                                            <td class="txtcenter"><{$comment.module}></td>
                                            <td class="txtcenter"><{$comment.poster}></td>
                                            <td class="txtright"><{$comment.time}></td>
                                        </tr>
                                    <{/foreach}>
                                </table>
                            </div>
                        </div>
                    </div>
                <{/if}>
                <{if !empty($dashboard_newuser)}>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-warning text-white mb-4">
                            <div class="card-body"><i class="fa fa-user-plus fa-2x"></i>&nbsp;<b><{$smarty.const.THEME_LATESTMEMBER}></b></div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <{foreach item=user from=$dashboard_newuser.users}>
                                    <{if $user.avatar != ""}>
                                        <a href='<{$xoops_url}>/userinfo.php?uid=<{$user.id}>' target='_blank'><img src="<{$user.avatar}>" title="<{$user.name}>" alt="<{$user.name}>" class='rounded-circle' border='0' height='32' width='32' title="<{$user.name}> | <{$user.joindate}>"><{$user.name}> | <{$user.joindate}></a><br>
                                    <{else}>
                                        <a href='<{$xoops_url}>/userinfo.php?uid=<{$user.id}>' target='_blank'><img src="<{$xoops_url}>/images/blank.gif" title="<{$user.name}>" alt="<{$user.name}>" class='rounded-circle' border='0' height='32' width='32' title="<{$user.name}> | <{$user.joindate}>"><{$user.name}> | <{$user.joindate}></a><br>
                                    <{/if}>
                                <{/foreach}>
                            </div>
                        </div>
                    </div>
                <{/if}>
                <{if !empty($dashboard_online)}>
                    <div class="col-xl-3 col-md-6">
                        <div class="card bg-danger text-white mb-4">
                            <div class="card-body"><i class="fa fa-globe fa-2x"></i>&nbsp;<b><{$smarty.const.THEME_TOTALONLINE}></b></div>
                            <div class="card-footer d-flex align-items-center justify-content-between">
                                <p><{$dashboard_online.totalOnline}></p>
                            </div>
                        </div>
                    </div>
                <{/if}>
            </div>
        </div>
    <{/if}>

    <{if $xoBlocks.page_topcenter}>
        <div class="container-fluid theme-blocks theme-blocks-top">
            <div class="row">
                <{include file="$theme_name/tpl/topCenter.tpl"}>
            </div>
        </div>
    <{/if}>
    <{if $xoBlocks.page_topleft || $xoBlocks.page_topright}>
        <div class="container-fluid theme-blocks theme-blocks-top">
            <div class="row">
                <{include file="$theme_name/tpl/topLeft.tpl"}><{include file="$theme_name/tpl/topRight.tpl"}>
            </div>
        </div>
    <{/if}> 

    <div class="container-fluid">
        <div class="row">
            <{if $xoBlocks.canvas_right}>
                <div class="col-xs-12 col-lg-9 col-md-9 col-sm-9 col-xl-10">
            <{else}>
               <div class="col-12">
            <{/if}>
            <{if $xoops_contents}>
                <{if $xoops_page != "index"}>
                    <div class="card-header">
                        <{if $xoops_pagetitle !=''}>
                            <h5 class="mt-2"><{$xoops_pagetitle}></h5>
                        <{/if}>
                    </div>
                <{/if}>
                <div class="card-body theme-content">
                    <p class="mb-0">
                        <{$xoops_contents}>
                    </p>
                </div>
            <{/if}>
            </div>
            <{if $xoBlocks.canvas_right}>
                <div class="col-xs-12 col-lg-3 col-md-3 col-sm-3 col-xl-2 theme-blocks theme-blocks-right">
                    <{include file="$theme_name/tpl/rightBlock.tpl"}>
                </div>
            <{/if}>
        </div>
    </div>

	<{if $xoBlocks.page_bottomleft || $xoBlocks.page_bottomright}>
        <div class="container-fluid theme-blocks theme-blocks theme-blocks-bottom">
            <div class="row">
                <{include file="$theme_name/tpl/bottomLeft.tpl"}><{include file="$theme_name/tpl/bottomRight.tpl"}>
            </div>
        </div>
    <{/if}>
    <{if $xoBlocks.page_bottomcenter}>
        <div class="container-fluid theme-blocks theme-blocks-bottom">
            <div class="row">
                <{include file="$theme_name/tpl/bottomCenter.tpl"}>
            </div>
        </div>
    <{/if}>
    <{if $xoBlocks.footer_left || $xoBlocks.footer_right}>
        <div class="container-fluid theme-blocks theme-blocks-footer">
            <div class="row">
                <{include file="$theme_name/tpl/footerLeft.tpl"}><{include file="$theme_name/tpl/footerRight.tpl"}>
            </div>
        </div>
    <{/if}>
    <{if $xoBlocks.footer_center}>
        <div class="container-fluid theme-blocks theme-blocks-footer">
            <div class="row">
                <{include file="$theme_name/tpl/footerCenter.tpl"}>
            </div>
        </div>
    <{/if}>
</main>
