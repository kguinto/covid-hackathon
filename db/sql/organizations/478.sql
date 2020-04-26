
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
      'Valley Medical Center',
      '4033 Talbot Road South
Renton, WA 98055',
      'Renton',
      'WA',
      'Mon-Fri: 9 am – 3 pm. Parallel parking spots on west side of building. You may also drop-off at any of Valley''s four Urgent Care Clinic locations, open 7 days/wk.

For questions, please email donation@valleymed.org or call us at 425.228.3440 ext. 3886',
      'Yes',
      '47.444271',
      '-122.214566'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Medical Center'
        AND o.latitude = '47.444271'
        AND o.longitude = '-122.214566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Medical Center'
        AND o.latitude = '47.444271'
        AND o.longitude = '-122.214566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Medical Center'
        AND o.latitude = '47.444271'
        AND o.longitude = '-122.214566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Medical Center'
        AND o.latitude = '47.444271'
        AND o.longitude = '-122.214566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Medical Center'
        AND o.latitude = '47.444271'
        AND o.longitude = '-122.214566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Medical Center'
        AND o.latitude = '47.444271'
        AND o.longitude = '-122.214566'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Medical Center'
        AND o.latitude = '47.444271'
        AND o.longitude = '-122.214566'));

COMMIT;
