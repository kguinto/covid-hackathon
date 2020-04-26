
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
      'VNA HOSPICE ',
      '6235 River Crest Dr Suite L
Riverside, CA 92507',
      'Riverside ',
      'CA',
      'Leave with front desk ',
      'Yes',
      '33.9382004',
      '-117.2928698'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'VNA HOSPICE '
        AND o.latitude = '33.9382004'
        AND o.longitude = '-117.2928698'));

COMMIT;
