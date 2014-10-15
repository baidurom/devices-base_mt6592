.class final Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "BookmarkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/BookmarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BookmarkDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/BookmarkView;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/BookmarkView;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;
    invoke-static {v0}, Lcom/mediatek/widget/BookmarkView;->access$100(Lcom/mediatek/widget/BookmarkView;)Lcom/mediatek/widget/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/widget/BookmarkAdapter;->clearBitmapCache()V

    .line 443
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mItemCount:I
    invoke-static {v1}, Lcom/mediatek/widget/BookmarkView;->access$300(Lcom/mediatek/widget/BookmarkView;)I

    move-result v1

    #setter for: Lcom/mediatek/widget/BookmarkView;->mOldItemCount:I
    invoke-static {v0, v1}, Lcom/mediatek/widget/BookmarkView;->access$202(Lcom/mediatek/widget/BookmarkView;I)I

    .line 444
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;
    invoke-static {v1}, Lcom/mediatek/widget/BookmarkView;->access$100(Lcom/mediatek/widget/BookmarkView;)Lcom/mediatek/widget/BookmarkAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/widget/BookmarkAdapter;->getCount()I

    move-result v1

    #setter for: Lcom/mediatek/widget/BookmarkView;->mItemCount:I
    invoke-static {v0, v1}, Lcom/mediatek/widget/BookmarkView;->access$302(Lcom/mediatek/widget/BookmarkView;I)I

    .line 446
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bookmark data changes: mItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mItemCount:I
    invoke-static {v2}, Lcom/mediatek/widget/BookmarkView;->access$300(Lcom/mediatek/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mOldItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mOldItemCount:I
    invoke-static {v2}, Lcom/mediatek/widget/BookmarkView;->access$200(Lcom/mediatek/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurrentSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I
    invoke-static {v2}, Lcom/mediatek/widget/BookmarkView;->access$400(Lcom/mediatek/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mCurrentSelectedPosition:I
    invoke-static {v0}, Lcom/mediatek/widget/BookmarkView;->access$400(Lcom/mediatek/widget/BookmarkView;)I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mItemCount:I
    invoke-static {v1}, Lcom/mediatek/widget/BookmarkView;->access$300(Lcom/mediatek/widget/BookmarkView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mCoverflow:Landroid/widget/BounceCoverFlow;
    invoke-static {v0}, Lcom/mediatek/widget/BookmarkView;->access$500(Lcom/mediatek/widget/BookmarkView;)Landroid/widget/BounceCoverFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mItemCount:I
    invoke-static {v1}, Lcom/mediatek/widget/BookmarkView;->access$300(Lcom/mediatek/widget/BookmarkView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setNextSelectedPositionInt(I)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkView;->refreshInfo(Z)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #calls: Lcom/mediatek/widget/BookmarkView;->refreshIndicators()V
    invoke-static {v0}, Lcom/mediatek/widget/BookmarkView;->access$000(Lcom/mediatek/widget/BookmarkView;)V

    .line 462
    return-void
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    .line 467
    const-string v0, "BookmarkView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bookmark data invalidate:mItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mItemCount:I
    invoke-static {v2}, Lcom/mediatek/widget/BookmarkView;->access$300(Lcom/mediatek/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mOldItemCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mOldItemCount:I
    invoke-static {v2}, Lcom/mediatek/widget/BookmarkView;->access$200(Lcom/mediatek/widget/BookmarkView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #getter for: Lcom/mediatek/widget/BookmarkView;->mBookmarkAdapter:Lcom/mediatek/widget/BookmarkAdapter;
    invoke-static {v0}, Lcom/mediatek/widget/BookmarkView;->access$100(Lcom/mediatek/widget/BookmarkView;)Lcom/mediatek/widget/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/widget/BookmarkAdapter;->clearBitmapCache()V

    .line 471
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkView;->refreshInfo(Z)V

    .line 472
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkView$BookmarkDataSetObserver;->this$0:Lcom/mediatek/widget/BookmarkView;

    #calls: Lcom/mediatek/widget/BookmarkView;->refreshIndicators()V
    invoke-static {v0}, Lcom/mediatek/widget/BookmarkView;->access$000(Lcom/mediatek/widget/BookmarkView;)V

    .line 473
    return-void
.end method
