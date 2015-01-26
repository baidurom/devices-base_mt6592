.class public Lcom/android/internal/util/ButtonConfigHelper;
.super Ljava/lang/Object;
.source "ButtonConfigHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeActionValue(Lcom/android/internal/util/ButtonHelper$Action;)Ljava/lang/String;
    .locals 2
    .parameter "action"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/util/ButtonHelper$Action;->hasArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/util/ButtonHelper$Action;->argsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static makeHardwareKeyConfigValues([Lcom/android/internal/util/ButtonHelper$Action;)Ljava/lang/String;
    .locals 6
    .parameter "actions"

    .prologue
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, arr$:[Lcom/android/internal/util/ButtonHelper$Action;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 27
    .local v0, action:Lcom/android/internal/util/ButtonHelper$Action;
    invoke-static {v0}, Lcom/android/internal/util/ButtonConfigHelper;->makeActionValue(Lcom/android/internal/util/ButtonHelper$Action;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    .end local v0           #action:Lcom/android/internal/util/ButtonHelper$Action;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static makeNavButtonConfigValues(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/ButtonHelper$ButtonConfig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, configs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/ButtonHelper$ButtonConfig;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/ButtonHelper$ButtonConfig;

    .line 57
    .local v1, config:Lcom/android/internal/util/ButtonHelper$ButtonConfig;
    iget-object v3, v1, Lcom/android/internal/util/ButtonHelper$ButtonConfig;->clickAction:Lcom/android/internal/util/ButtonHelper$Action;

    invoke-static {v3}, Lcom/android/internal/util/ButtonConfigHelper;->makeActionValue(Lcom/android/internal/util/ButtonHelper$Action;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v3, v1, Lcom/android/internal/util/ButtonHelper$ButtonConfig;->longPressAction:Lcom/android/internal/util/ButtonHelper$Action;

    invoke-static {v3}, Lcom/android/internal/util/ButtonConfigHelper;->makeActionValue(Lcom/android/internal/util/ButtonHelper$Action;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    .end local v1           #config:Lcom/android/internal/util/ButtonHelper$ButtonConfig;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static parseHardwareKeyConfigValues(Ljava/lang/String;)[Lcom/android/internal/util/ButtonHelper$Action;
    .locals 7
    .parameter "config"

    .prologue
    .line 9
    sget v6, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_SIZE:I

    new-array v4, v6, [Lcom/android/internal/util/ButtonHelper$Action;

    .line 12
    .local v4, result:[Lcom/android/internal/util/ButtonHelper$Action;
    const-string v6, "\\|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 13
    .local v5, splits:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 14
    .local v1, counter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    sget v6, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_SIZE:I

    if-ge v1, v6, :cond_1

    .line 15
    new-instance v0, Lcom/android/internal/util/ButtonHelper$Action;

    aget-object v6, v5, v3

    invoke-static {v6}, Lcom/android/internal/util/ButtonHelper$ActionType;->valueOf(Ljava/lang/String;)Lcom/android/internal/util/ButtonHelper$ActionType;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/internal/util/ButtonHelper$Action;-><init>(Lcom/android/internal/util/ButtonHelper$ActionType;)V

    .line 16
    .local v0, action:Lcom/android/internal/util/ButtonHelper$Action;
    invoke-virtual {v0}, Lcom/android/internal/util/ButtonHelper$Action;->hasArgs()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    add-int/lit8 v3, v3, 0x1

    aget-object v6, v5, v3

    invoke-virtual {v0, v6}, Lcom/android/internal/util/ButtonHelper$Action;->parseArgs(Ljava/lang/String;)V

    .line 19
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #counter:I
    .local v2, counter:I
    aput-object v0, v4, v1

    .line 14
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2           #counter:I
    .restart local v1       #counter:I
    goto :goto_0

    .line 21
    .end local v0           #action:Lcom/android/internal/util/ButtonHelper$Action;
    :cond_1
    return-object v4
.end method

.method static parseNavButtonConfigValues(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "configs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/ButtonHelper$ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-string v5, "\\|"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, splits:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/ButtonHelper$ButtonConfig;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 38
    new-instance v1, Lcom/android/internal/util/ButtonHelper$ButtonConfig;

    invoke-direct {v1}, Lcom/android/internal/util/ButtonHelper$ButtonConfig;-><init>()V

    .line 39
    .local v1, config:Lcom/android/internal/util/ButtonHelper$ButtonConfig;
    new-instance v0, Lcom/android/internal/util/ButtonHelper$Action;

    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/android/internal/util/ButtonHelper$ActionType;->valueOf(Ljava/lang/String;)Lcom/android/internal/util/ButtonHelper$ActionType;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/util/ButtonHelper$Action;-><init>(Lcom/android/internal/util/ButtonHelper$ActionType;)V

    .line 40
    .local v0, action:Lcom/android/internal/util/ButtonHelper$Action;
    invoke-virtual {v0}, Lcom/android/internal/util/ButtonHelper$Action;->hasArgs()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    add-int/lit8 v2, v2, 0x1

    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Lcom/android/internal/util/ButtonHelper$Action;->parseArgs(Ljava/lang/String;)V

    .line 43
    :cond_0
    iput-object v0, v1, Lcom/android/internal/util/ButtonHelper$ButtonConfig;->clickAction:Lcom/android/internal/util/ButtonHelper$Action;

    .line 44
    new-instance v0, Lcom/android/internal/util/ButtonHelper$Action;

    .end local v0           #action:Lcom/android/internal/util/ButtonHelper$Action;
    add-int/lit8 v2, v2, 0x1

    aget-object v5, v4, v2

    invoke-static {v5}, Lcom/android/internal/util/ButtonHelper$ActionType;->valueOf(Ljava/lang/String;)Lcom/android/internal/util/ButtonHelper$ActionType;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/util/ButtonHelper$Action;-><init>(Lcom/android/internal/util/ButtonHelper$ActionType;)V

    .line 45
    .restart local v0       #action:Lcom/android/internal/util/ButtonHelper$Action;
    invoke-virtual {v0}, Lcom/android/internal/util/ButtonHelper$Action;->hasArgs()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    add-int/lit8 v2, v2, 0x1

    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Lcom/android/internal/util/ButtonHelper$Action;->parseArgs(Ljava/lang/String;)V

    .line 48
    :cond_1
    iput-object v0, v1, Lcom/android/internal/util/ButtonHelper$ButtonConfig;->longPressAction:Lcom/android/internal/util/ButtonHelper$Action;

    .line 49
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v0           #action:Lcom/android/internal/util/ButtonHelper$Action;
    .end local v1           #config:Lcom/android/internal/util/ButtonHelper$ButtonConfig;
    :cond_2
    return-object v3
.end method
