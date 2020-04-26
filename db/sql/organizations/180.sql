
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
      'Sharp Grossmont Hospital',
      '9000 Wakarusa St
La Mesa, CA 91942',
      'La Mesa',
      'CA',
      'Drop off at Brier Patch Campus',
      '',
      '32.7829441',
      '-117.003463'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Grossmont Hospital'
        AND o.latitude = '32.7829441'
        AND o.longitude = '-117.003463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Grossmont Hospital'
        AND o.latitude = '32.7829441'
        AND o.longitude = '-117.003463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Grossmont Hospital'
        AND o.latitude = '32.7829441'
        AND o.longitude = '-117.003463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Grossmont Hospital'
        AND o.latitude = '32.7829441'
        AND o.longitude = '-117.003463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Grossmont Hospital'
        AND o.latitude = '32.7829441'
        AND o.longitude = '-117.003463'));

COMMIT;
