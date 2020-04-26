
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
      'Alternative Home Health Care',
      '160 Merrimack St
Methuen, MA 01844',
      'Methuen',
      'MA',
      'Andrea Surette',
      'Yes',
      '42.7333975',
      '-71.1359848'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alternative Home Health Care'
        AND o.latitude = '42.7333975'
        AND o.longitude = '-71.1359848'));

COMMIT;
