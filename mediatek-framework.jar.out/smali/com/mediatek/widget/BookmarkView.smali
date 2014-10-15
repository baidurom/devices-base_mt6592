.class public Lcom/mediatek/widget/BookmarkView;
.super Landroid/widget/FrameLayout;
.source "BookmarkView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_MAX_ZOOM:F = 400.0f

.field private static final DEFAULT_REFLECTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "BookmarkView"


# instance fields
.field private mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

.field private mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

.field private mCoverflow:Landroid/widget/BounceCoverFlow;

.field private mCurrentSelectedPosition:I

.field private mImageDispHeight:I

.field private mImageDispWidth:I

.field private mImageReflection:F

.field private mIndicators:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoColor:I

.field private mInfoView:Landroid/widget/TextView;

.field private mItemCount:I

.field private mMaxZoom:F

.field private mOldItemCount:I

.field private mRecycledIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

.field private mSpaceBetweenIndicators:I

.field private mSpaceBetweenItems:I

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/widget/BookmarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/BookmarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x43c8

    const/high16 v5, 0x3e80

    const/4 v4, -0x1

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput v6, p0, Lcom/mediatek/widget/BookmarkView;->mMaxZoom:F

    .line 81
    iput v5, p0, Lcom/mediatek/widget/BookmarkView;->mImageReflection:F

    .line 83
    iput v4, p0, Lcom/mediatek/widget/BookmarkView;->mInfoColor:I

    .line 84
    iput v4, p0, Lcom/mediatek/widget/BookmarkView;->mTitleColor:I

    .line 97
    iput v4, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    .line 429
    new-instance v2, Lcom/mediatek/widget/BookmarkView$1;

    invoke-direct {v2, p0}, Lcom/mediatek/widget/BookmarkView$1;-><init>(Lcom/mediatek/widget/BookmarkView;)V

    iput-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    .line 119
    sget-object v2, Lcom/mediatek/internal/R$styleable;->BookmarkView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v2, 0x0

    const v3, 0x20d0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mImageDispWidth:I

    .line 124
    const v2, 0x20d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mImageDispHeight:I

    .line 127
    const/4 v2, 0x3

    const v3, 0x20d0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mSpaceBetweenIndicators:I

    .line 129
    const/4 v2, 0x2

    const v3, 0x20d0018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mSpaceBetweenItems:I

    .line 132
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mMaxZoom:F

    .line 133
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mImageReflection:F

    .line 136
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mTitleColor:I

    .line 138
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mInfoColor:I

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x2070002

    invoke-virtual {v2, v3, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/widget/BookmarkView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/widget/BookmarkView;->refreshIndicators()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/widget/BookmarkView;)Lcom/mediatek/widget/BookmarkAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/widget/BookmarkView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/widget/BookmarkView;->mOldItemCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/widget/BookmarkView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/widget/BookmarkView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/widget/BookmarkView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/widget/BookmarkView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/widget/BookmarkView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/widget/BookmarkView;)Landroid/widget/BounceCoverFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    return-object v0
.end method

.method private refreshIndicators()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 336
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 337
    .local v2, indicatorCnt:I
    move v3, v2

    .line 338
    .local v3, realCount:I
    iget v5, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    if-le v2, v5, :cond_0

    .line 339
    iget v3, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, recycleView:Landroid/widget/ImageView;
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    if-lt v0, v5, :cond_3

    .line 342
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #recycleView:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 343
    .restart local v4       #recycleView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 346
    invoke-virtual {v4}, Landroid/widget/ImageView;->forceLayout()V

    .line 347
    invoke-virtual {v4}, Landroid/widget/ImageView;->dispatchStartTemporaryDetach()V

    .line 348
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
    .end local v0           #i:I
    .end local v4           #recycleView:Landroid/widget/ImageView;
    :cond_0
    iget v5, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    if-ge v2, v5, :cond_3

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, indicator:Landroid/widget/ImageView;
    move v0, v2

    .restart local v0       #i:I
    :goto_1
    iget v5, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    if-ge v0, v5, :cond_3

    .line 353
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 354
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #indicator:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 359
    .restart local v1       #indicator:Landroid/widget/ImageView;
    :goto_2
    if-eqz v1, :cond_2

    .line 362
    const-string v5, "BookmarkView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get indicator from recycled list:indicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 373
    :goto_3
    iget v5, p0, Lcom/mediatek/widget/BookmarkView;->mSpaceBetweenIndicators:I

    invoke-virtual {v1, v8, v8, v5, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 374
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 367
    :cond_2
    const-string v5, "BookmarkView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get indicator by inflating layout resource:indicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2070001

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #indicator:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1       #indicator:Landroid/widget/ImageView;
    goto :goto_3

    .line 378
    .end local v0           #i:I
    .end local v1           #indicator:Landroid/widget/ImageView;
    :cond_3
    const-string v5, "BookmarkView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshIndicators indicatorCnt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mItemCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mIndicators = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentSelectedPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",realCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mRecycledIndicators.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v3, :cond_4

    .line 387
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 391
    :cond_4
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    if-le v5, v6, :cond_5

    .line 392
    iget-object v5, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 394
    :cond_5
    return-void
.end method


# virtual methods
.method public getCoverFlow()Landroid/widget/BounceCoverFlow;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    return v0
.end method

.method public getIndicatorsLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getInfoView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 398
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 400
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow:mBookmarkAdapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBookmarkDataSetObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;-><init>(Lcom/mediatek/widget/BookmarkView;)V

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    .line 405
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 408
    iget v0, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    iput v0, p0, Lcom/mediatek/widget/BookmarkView;->mOldItemCount:I

    .line 409
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/mediatek/widget/BookmarkAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    .line 411
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 415
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 417
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow:mBookmarkAdapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mRecycledIndicators.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mRecycledIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    .line 427
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 151
    const v0, 0x2100001

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    .line 152
    const v0, 0x2100002

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    .line 154
    const v0, 0x2100003

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/BounceCoverFlow;

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    .line 155
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setGravity(I)V

    .line 157
    const v0, 0x2100004

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/BookmarkView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mIndicators:Landroid/widget/LinearLayout;

    .line 159
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget v1, p0, Lcom/mediatek/widget/BookmarkView;->mSpaceBetweenItems:I

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setSpacing(I)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget v1, p0, Lcom/mediatek/widget/BookmarkView;->mMaxZoom:F

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setMaxZoomOut(F)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/widget/BookmarkView;->mTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/widget/BookmarkView;->mInfoColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setOnSelectionChangeListener(Landroid/widget/BounceGallery$OnSelectionChangeListener;)V

    .line 165
    return-void
.end method

.method public refreshInfo(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 307
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v2}, Lcom/mediatek/widget/BookmarkAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 310
    const-string v2, "BookmarkView"

    const-string v3, "refreshInfo and data invalid."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v2}, Landroid/widget/BounceCoverFlow;->getSelectedItemPosition()I

    move-result v1

    .line 319
    .local v1, selectedPos:I
    const-string v2, "BookmarkView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshInfo: new selectedPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old selected pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-nez p1, :cond_2

    iget v2, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    if-eq v2, v1, :cond_0

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v2, v1}, Lcom/mediatek/widget/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/BookmarkItem;

    .line 324
    .local v0, item:Lcom/mediatek/widget/BookmarkItem;
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mInfoView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/mediatek/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iput v1, p0, Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I

    goto :goto_0
.end method

.method public setBookmarkAdapter(Lcom/mediatek/widget/BookmarkAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 175
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBookmarkAdapter adapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBookmarkDataSetObserver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    .line 184
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;-><init>(Lcom/mediatek/widget/BookmarkView;)V

    iput-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    .line 186
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkDataSetObserver:Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    iget v1, p0, Lcom/mediatek/widget/BookmarkView;->mImageDispWidth:I

    iget v2, p0, Lcom/mediatek/widget/BookmarkView;->mImageDispHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/BookmarkAdapter;->setImageDispSize(II)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    iget v1, p0, Lcom/mediatek/widget/BookmarkView;->mImageReflection:F

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkAdapter;->setImageReflection(F)V

    .line 190
    iget v0, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    iput v0, p0, Lcom/mediatek/widget/BookmarkView;->mOldItemCount:I

    .line 191
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/mediatek/widget/BookmarkAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mediatek/widget/BookmarkView;->mItemCount:I

    .line 193
    :cond_1
    return-void
.end method

.method public setCoverFlowMaxZoomOut(F)V
    .locals 1
    .parameter "maxZoomout"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setMaxZoomOut(F)V

    .line 211
    return-void
.end method

.method public setCoverFlowSpacing(I)V
    .locals 1
    .parameter "spacing"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setSpacing(I)V

    .line 202
    return-void
.end method

.method public setGalleryOverScrollDistance(I)V
    .locals 1
    .parameter "distance"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p1}, Landroid/widget/BounceCoverFlow;->setOverScrollDistance(I)V

    .line 245
    return-void
.end method

.method public setImageDispSize(II)V
    .locals 1
    .parameter "dispWidth"
    .parameter "dispHeight"

    .prologue
    .line 220
    iput p1, p0, Lcom/mediatek/widget/BookmarkView;->mImageDispWidth:I

    .line 221
    iput p2, p0, Lcom/mediatek/widget/BookmarkView;->mImageDispHeight:I

    .line 222
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/widget/BookmarkAdapter;->setImageDispSize(II)V

    .line 225
    :cond_0
    return-void
.end method

.method public setImageReflection(F)V
    .locals 1
    .parameter "reflection"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/widget/BookmarkAdapter;->setImageReflection(F)V

    .line 236
    :cond_0
    return-void
.end method
