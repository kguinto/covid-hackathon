
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
      'Mission Hospital',
      '27700 Medical Center Rd
Mission Viejo, CA 92691',
      'Mission Viejo',
      'CA',
      'Emergency Room  Christina Dodge',
      'No',
      '33.5610153',
      '-117.6653937'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospital'
        AND o.latitude = '33.5610153'
        AND o.longitude = '-117.6653937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospital'
        AND o.latitude = '33.5610153'
        AND o.longitude = '-117.6653937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospital'
        AND o.latitude = '33.5610153'
        AND o.longitude = '-117.6653937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospital'
        AND o.latitude = '33.5610153'
        AND o.longitude = '-117.6653937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospital'
        AND o.latitude = '33.5610153'
        AND o.longitude = '-117.6653937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospital'
        AND o.latitude = '33.5610153'
        AND o.longitude = '-117.6653937'));

COMMIT;
