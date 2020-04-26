
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
      'Hilaire Rehab and Nursing',
      '9 Hilaire Dr
Huntington, NY 11743',
      'Huntington',
      'NY',
      'Please drop all supplies in the vestibule of the facility ',
      'Yes',
      '40.8685913',
      '-73.4104241'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometer probe covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hilaire Rehab and Nursing'
        AND o.latitude = '40.8685913'
        AND o.longitude = '-73.4104241'));

COMMIT;
