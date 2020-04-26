
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
      'Catholic Medical Center ',
      '100 McGregor St
Manchester, NH 03102',
      'Manchester ',
      'NH',
      'Drop off at Main Information Desk during the day; Emergency department in the evening/night. ',
      'Yes',
      '42.991178',
      '-71.4746693'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Catholic Medical Center '
        AND o.latitude = '42.991178'
        AND o.longitude = '-71.4746693'));

COMMIT;
