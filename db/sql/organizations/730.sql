
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
      'UrgenCare Clinic',
      '2169 W Point Rd
LaGrange, GA 30240',
      'LaGrange',
      'GA',
      '2169 West Point Road
UrgenCare Clinic',
      'Yes',
      '33.0242493',
      '-85.0768251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UrgenCare Clinic'
        AND o.latitude = '33.0242493'
        AND o.longitude = '-85.0768251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UrgenCare Clinic'
        AND o.latitude = '33.0242493'
        AND o.longitude = '-85.0768251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UrgenCare Clinic'
        AND o.latitude = '33.0242493'
        AND o.longitude = '-85.0768251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UrgenCare Clinic'
        AND o.latitude = '33.0242493'
        AND o.longitude = '-85.0768251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UrgenCare Clinic'
        AND o.latitude = '33.0242493'
        AND o.longitude = '-85.0768251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UrgenCare Clinic'
        AND o.latitude = '33.0242493'
        AND o.longitude = '-85.0768251'));

COMMIT;
