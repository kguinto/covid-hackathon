
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
      'Moffett Drug',
      '102 S State Street 
Norton, KS 67654',
      'Norton',
      'KS',
      'Mail attn: Abby Rice',
      'No',
      '39.8289429',
      '-99.8892251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moffett Drug'
        AND o.latitude = '39.8289429'
        AND o.longitude = '-99.8892251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moffett Drug'
        AND o.latitude = '39.8289429'
        AND o.longitude = '-99.8892251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moffett Drug'
        AND o.latitude = '39.8289429'
        AND o.longitude = '-99.8892251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moffett Drug'
        AND o.latitude = '39.8289429'
        AND o.longitude = '-99.8892251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moffett Drug'
        AND o.latitude = '39.8289429'
        AND o.longitude = '-99.8892251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moffett Drug'
        AND o.latitude = '39.8289429'
        AND o.longitude = '-99.8892251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Moffett Drug'
        AND o.latitude = '39.8289429'
        AND o.longitude = '-99.8892251'));

COMMIT;
