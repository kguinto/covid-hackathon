
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
      'Douglas T Jacobson State VA Nursing Home',
      '21281 Grayton Terrace
Port Charlotte, FL 33954',
      'Port Charlotte',
      'FL',
      'Call: 941 441 5884',
      'Unsure',
      '27.0270953',
      '-82.0976853'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Douglas T Jacobson State VA Nursing Home'
        AND o.latitude = '27.0270953'
        AND o.longitude = '-82.0976853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Douglas T Jacobson State VA Nursing Home'
        AND o.latitude = '27.0270953'
        AND o.longitude = '-82.0976853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Douglas T Jacobson State VA Nursing Home'
        AND o.latitude = '27.0270953'
        AND o.longitude = '-82.0976853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Douglas T Jacobson State VA Nursing Home'
        AND o.latitude = '27.0270953'
        AND o.longitude = '-82.0976853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Douglas T Jacobson State VA Nursing Home'
        AND o.latitude = '27.0270953'
        AND o.longitude = '-82.0976853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('thermometer caps for scanning temps',
    (SELECT id FROM organizations o
      WHERE o.name = 'Douglas T Jacobson State VA Nursing Home'
        AND o.latitude = '27.0270953'
        AND o.longitude = '-82.0976853'));

COMMIT;
