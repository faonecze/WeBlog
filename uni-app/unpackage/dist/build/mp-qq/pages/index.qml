<block><scroll-view class="cu-card case scroll-view" scroll-y><view class="cu-bar search bg-white"><view class="search-form round"><text class="icon-search"></text><input adjust-position="{{false}}" type="text" placeholder="搜索分类、文章、标签" confirm-type="search" data-event-opts="{{[['focus',[['InputFocus',['$event']]]],['blur',[['InputBlur',['$event']]]]]}}" bindfocus="__e" bindblur="__e"/></view></view><swiper class="{{['card-swiper margin-top margin-bottom',dotStyle?'square-dot':'round-dot']}}" indicator-dots="{{true}}" circular="{{true}}" autoplay="{{true}}" interval="5000" duration="500" indicator-color="#8799a3" indicator-active-color="#0081ff" data-event-opts="{{[['change',[['cardSwiper',['$event']]]]]}}" bindchange="__e"><block wx:for="{{swiperList}}" wx:for-item="item" wx:for-index="index" wx:key="index"><swiper-item class="{{[cardCur==index?'cur':'']}}" style="padding:0;"><view class="swiper-item"><block wx:if="{{item.type=='image'}}"><image src="{{item.url}}" mode="aspectFill"></image></block><block wx:if="{{item.type=='video'}}"><video src="{{item.url}}" autoplay loop muted="{{true}}" show-play-btn="{{false}}" controls="{{false}}" objectFit="cover"></video></block></view></swiper-item></block></swiper><block wx:for="{{$root.l0}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view class="margin list" style="overflow:hidden;"><block wx:if="{{index%4==3}}"><ad class="ad" unit-id="750221a1c0d4c6f021ab39df00a40ae7" type="feeds"></ad></block><navigator class="list__item" url="{{'/pages/post?cid='+item.$orig.cid+'&thumb='+item.$orig.thumb[0].str_value}}"><view class="image"><image src="{{item.$orig.thumb[0].str_value}}" mode="widthFix" lazy-load="{{true}}"></image><view class="cu-bar text-shadow bg-shadeBottom">{{item.$orig.title}}</view></view><view class="cu-list menu menu-avatar"><view class="cu-item" style="height:70rpx;min-height:70rpx;"><view class="text-gray text-sm flex justify-between align-center" style="width:100%;"><view><text class="color-base margin-right-sm">{{item.$orig.screenName}}</text>{{''+item.m0}}</view><view class="text-gray"><text class="icon-attentionfill margin-xs"></text>{{''+item.$orig.views+''}}<text class="icon-appreciatefill margin-xs"></text>{{''+item.$orig.likes+''}}<text class="icon-messagefill margin-xs"></text>{{''+item.$orig.commentsNum+''}}</view></view></view></view></navigator></view></block><view style="padding-bottom:50px;"><view class="action"><view class="{{['cu-load load-icon',isLoading?'loading':'over']}}"></view></view></view></scroll-view></block>