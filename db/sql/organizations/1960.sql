
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
      'Lake Wales Dental Group',
      '1 Doctors Ln
Lake Wales, FL 33853',
      'Lake Wales ',
      'FL',
      'Front door ',
      'Yes',
      '27.8919861',
      '-81.5650627'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Wales Dental Group'
        AND o.latitude = '27.8919861'
        AND o.longitude = '-81.5650627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Wales Dental Group'
        AND o.latitude = '27.8919861'
        AND o.longitude = '-81.5650627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Wales Dental Group'
        AND o.latitude = '27.8919861'
        AND o.longitude = '-81.5650627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Wales Dental Group'
        AND o.latitude = '27.8919861'
        AND o.longitude = '-81.5650627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Wales Dental Group'
        AND o.latitude = '27.8919861'
        AND o.longitude = '-81.5650627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lake Wales Dental Group'
        AND o.latitude = '27.8919861'
        AND o.longitude = '-81.5650627'));

COMMIT;
