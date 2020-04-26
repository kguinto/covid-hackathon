
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
      'St. Luke''s University Health Network ',
      '1650 E Race St
Allentown, PA 18109',
      'Allentown ',
      'PA',
      'Curbside or 1650 East Race Street Allentown PA, 180109',
      'Yes',
      '40.6596937',
      '-75.4443959'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Luke''s University Health Network '
        AND o.latitude = '40.6596937'
        AND o.longitude = '-75.4443959'));

COMMIT;
