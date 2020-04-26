
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
      'Children''s Hospital of Philadelphia',
      '3501 Civic Center Blvd
Philadelphia, PA 19104',
      'Philadelphia',
      'PA',
      'Drop off at the Emergency Department with the greeter nurse / security officer at entrance to Emergency Department waiting room',
      'Yes',
      '39.946337',
      '-75.195284'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Hospital of Philadelphia'
        AND o.latitude = '39.946337'
        AND o.longitude = '-75.195284'));

COMMIT;
