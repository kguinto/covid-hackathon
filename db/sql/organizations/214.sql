
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
      'WhidbeyHealth Medical Center',
      '101 N Main Street
Coupeville, WA 98239',
      'Coupeville',
      'WA',
      'Attn: Infection control nurse.  (Or drop off at front desk to give to her)',
      'Maybe',
      '48.2135646',
      '-122.6845344'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'WhidbeyHealth Medical Center'
        AND o.latitude = '48.2135646'
        AND o.longitude = '-122.6845344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'WhidbeyHealth Medical Center'
        AND o.latitude = '48.2135646'
        AND o.longitude = '-122.6845344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'WhidbeyHealth Medical Center'
        AND o.latitude = '48.2135646'
        AND o.longitude = '-122.6845344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'WhidbeyHealth Medical Center'
        AND o.latitude = '48.2135646'
        AND o.longitude = '-122.6845344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'WhidbeyHealth Medical Center'
        AND o.latitude = '48.2135646'
        AND o.longitude = '-122.6845344'));

COMMIT;
