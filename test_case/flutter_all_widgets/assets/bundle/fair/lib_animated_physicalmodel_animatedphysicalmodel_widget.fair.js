GLOBAL['#FairKey#']=(function(__initProps__){const __global__=this;return runCallback(function(__mod__){with(__mod__.imports){function _FairAnimatedPhysicalModelPageState(){const inner=_FairAnimatedPhysicalModelPageState.__inner__;if(this==__global__){return new _FairAnimatedPhysicalModelPageState({__args__:arguments});}else{const args=arguments.length>0?arguments[0].__args__||arguments:[];inner.apply(this,args);_FairAnimatedPhysicalModelPageState.prototype.ctor.apply(this,args);return this;}}_FairAnimatedPhysicalModelPageState.__inner__=function inner(){this._animated=false;};_FairAnimatedPhysicalModelPageState.prototype={_buildAnimatedPhysicalModel:function _buildAnimatedPhysicalModel(){const __thiz__=this;with(__thiz__){return AnimatedPhysicalModel({borderRadius:BorderRadius.circular(Sugar.ifEqualBool(_animated,{trueValue:20,falseValue:10})),shape:BoxShape.rectangle,color:Sugar.ifEqualBool(_animated,{trueValue:Colors.blue,falseValue:Colors.red}),elevation:Sugar.ifEqualBool(_animated,{trueValue:18,falseValue:8}),shadowColor:Sugar.ifEqualBool(_animated,{trueValue:Colors.red,falseValue:Colors.blue}),child:Container({height:100,width:100}),duration:Duration({seconds:1})});}},_setAnimated:function _setAnimated(){const __thiz__=this;with(__thiz__){setState('#FairKey#',function dummy(){_animated=!_animated;});}},};_FairAnimatedPhysicalModelPageState.prototype.ctor=function(){Object.prototype.ctor.call(this);};;return _FairAnimatedPhysicalModelPageState();}},[]);})(convertObjectLiteralToSetOrMap(JSON.parse('#FairProps#')));