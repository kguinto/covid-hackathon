
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
      'Brentwood Primary Care--Vanderbilt University Medical Center',
      '8121 Wikle Rd E
Brentwood, TN 37027',
      'Brentwood',
      'TN',
      '',
      'No',
      '35.9816184',
      '-86.7906842'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brentwood Primary Care--Vanderbilt University Medical Center'
        AND o.latitude = '35.9816184'
        AND o.longitude = '-86.7906842'));

COMMIT;
