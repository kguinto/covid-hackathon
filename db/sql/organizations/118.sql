
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
      'Southern New Hampshire Medical Center',
      '8 Prospect St
Nashua, NH 03060',
      'Nashua',
      'NH',
      'Hours are from 8 a.m. to 4 p.m. beginning Sunday. Donations will be accepted on Monday through Wednesday after Sunday, until further notice.',
      'Unclear',
      '42.7564074',
      '-71.4620781'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern New Hampshire Medical Center'
        AND o.latitude = '42.7564074'
        AND o.longitude = '-71.4620781'));

COMMIT;
