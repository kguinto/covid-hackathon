
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
      'Sharp Chula Vista Medical Center',
      '751 Medical Center Ct
Chula Vista, CA 91911',
      'Chula Vista',
      'CA',
      '',
      'No',
      '32.6187297',
      '-117.0221467'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Chula Vista Medical Center'
        AND o.latitude = '32.6187297'
        AND o.longitude = '-117.0221467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Chula Vista Medical Center'
        AND o.latitude = '32.6187297'
        AND o.longitude = '-117.0221467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Chula Vista Medical Center'
        AND o.latitude = '32.6187297'
        AND o.longitude = '-117.0221467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Chula Vista Medical Center'
        AND o.latitude = '32.6187297'
        AND o.longitude = '-117.0221467'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Chula Vista Medical Center'
        AND o.latitude = '32.6187297'
        AND o.longitude = '-117.0221467'));

COMMIT;
