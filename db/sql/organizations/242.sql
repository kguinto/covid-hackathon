
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
      'OHSU',
      '3303 SW Bond Ave
Portland, OR 97239',
      'Portland',
      'OR',
      'Drop-off at DOCK: Monday - Friday 9am - 5 pm ',
      'No',
      '45.4988717',
      '-122.6712335'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OHSU'
        AND o.latitude = '45.4988717'
        AND o.longitude = '-122.6712335'));

COMMIT;
