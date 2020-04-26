
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
      'Greenwich Hospital',
      '28 Woodland Dr. Unit B
Greenwich, CT 06830',
      'Greenwich',
      'CT',
      'Unused masks only. Mail w/Attn: Marc Gurny. Can also pick up locally, call 914-523-0723.',
      'No',
      '41.0222988',
      '-73.629268'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greenwich Hospital'
        AND o.latitude = '41.0222988'
        AND o.longitude = '-73.629268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greenwich Hospital'
        AND o.latitude = '41.0222988'
        AND o.longitude = '-73.629268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greenwich Hospital'
        AND o.latitude = '41.0222988'
        AND o.longitude = '-73.629268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greenwich Hospital'
        AND o.latitude = '41.0222988'
        AND o.longitude = '-73.629268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greenwich Hospital'
        AND o.latitude = '41.0222988'
        AND o.longitude = '-73.629268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greenwich Hospital'
        AND o.latitude = '41.0222988'
        AND o.longitude = '-73.629268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greenwich Hospital'
        AND o.latitude = '41.0222988'
        AND o.longitude = '-73.629268'));

COMMIT;
