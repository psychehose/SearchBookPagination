import FeatureRoot


// 모듈 맵을 이용 or 여기서 dummy code를 생성해서 binary를 적재시킴.

func linking_static_library() {
    print(FeatureRoot.FeatureRootViewController.self)
    print(FeatureRoot.FeatureRootBuilder.self)
    print(FeatureRoot.FeatureRootComponent.self)
    print(FeatureRoot.FeatureRootDependency.self)
    print(FeatureRoot.FeatureRootRouting.self)
    print(FeatureRoot.FeatureRootBuildable.self)
}
