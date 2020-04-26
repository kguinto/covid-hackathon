
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
      'West Anaheim Medical Center',
      '3033 W Orange Ave
Anaheim, CA 92804',
      'Anaheim',
      'CA',
      'ATTN: Jason S, Emergency Department OR Attn: Carolyn Stoddard',
      'Yes',
      '33.8252217',
      '-117.9950032'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Anaheim Medical Center'
        AND o.latitude = '33.8252217'
        AND o.longitude = '-117.9950032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Anaheim Medical Center'
        AND o.latitude = '33.8252217'
        AND o.longitude = '-117.9950032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Anaheim Medical Center'
        AND o.latitude = '33.8252217'
        AND o.longitude = '-117.9950032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Anaheim Medical Center'
        AND o.latitude = '33.8252217'
        AND o.longitude = '-117.9950032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Anaheim Medical Center'
        AND o.latitude = '33.8252217'
        AND o.longitude = '-117.9950032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Anaheim Medical Center'
        AND o.latitude = '33.8252217'
        AND o.longitude = '-117.9950032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Anaheim Medical Center'
        AND o.latitude = '33.8252217'
        AND o.longitude = '-117.9950032'));

COMMIT;
