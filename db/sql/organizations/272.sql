
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Summa Health System',
      '141 N Forge St
Akron, OH 44304',
      'Akron',
      'OH',
      'Emergency dept entrance',
      'Yes',
      '41.0821139',
      '-81.5012108'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Summa Health System'
        AND o.latitude = '41.0821139'
        AND o.longitude = '-81.5012108'));

COMMIT;
