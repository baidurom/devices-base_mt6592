.class public Lcom/mediatek/mom/PermissionHistoryBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 53
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    move-wide v2, p1

    move-wide p1, p3

    move-wide p3, v2

    .line 61
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    .line 62
    iput-wide p3, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    instance-of v2, p1, Lcom/mediatek/mom/PermissionHistoryBase;

    if-nez v2, :cond_2

    move v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    check-cast p1, Lcom/mediatek/mom/PermissionHistoryBase;

    .line 130
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    invoke-virtual {p1}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    invoke-virtual {p1}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    return-wide v0
.end method

.method public overlap(JJ)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 85
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    cmp-long v2, v2, p3

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    :cond_3
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackagePermissionHistory {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalTime()J
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    sub-long/2addr v0, v2

    .line 69
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public within(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 74
    iget-wide v1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-wide v1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->a:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    iget-wide v1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->b:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
