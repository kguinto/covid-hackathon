
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
      'Nursingale',
      '9900 SW Greenburg Rd #290
Tigard, OR 97223',
      'Portland ',
      'OR',
      'Place outside the office door ',
      'No',
      '45.4485001',
      '-122.7747197'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nursingale'
        AND o.latitude = '45.4485001'
        AND o.longitude = '-122.7747197'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nursingale'
        AND o.latitude = '45.4485001'
        AND o.longitude = '-122.7747197'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nursingale'
        AND o.latitude = '45.4485001'
        AND o.longitude = '-122.7747197'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nursingale'
        AND o.latitude = '45.4485001'
        AND o.longitude = '-122.7747197'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nursingale'
        AND o.latitude = '45.4485001'
        AND o.longitude = '-122.7747197'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nursingale'
        AND o.latitude = '45.4485001'
        AND o.longitude = '-122.7747197'));

COMMIT;
