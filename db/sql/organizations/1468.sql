
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
      'CONIFER PARK OUTPATIENT',
      '399 Seymour Rd
West Chazy, NY 12992',
      'WEST CHAZY',
      'NY',
      'JUST CALL CLINIC 518-561-1447 AND SOMEONE WILL GO OUT TO GRAB',
      'Yes',
      '44.7829819',
      '-73.549124'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CONIFER PARK OUTPATIENT'
        AND o.latitude = '44.7829819'
        AND o.longitude = '-73.549124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'CONIFER PARK OUTPATIENT'
        AND o.latitude = '44.7829819'
        AND o.longitude = '-73.549124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CONIFER PARK OUTPATIENT'
        AND o.latitude = '44.7829819'
        AND o.longitude = '-73.549124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CONIFER PARK OUTPATIENT'
        AND o.latitude = '44.7829819'
        AND o.longitude = '-73.549124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'CONIFER PARK OUTPATIENT'
        AND o.latitude = '44.7829819'
        AND o.longitude = '-73.549124'));

COMMIT;
