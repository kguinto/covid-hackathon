
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
      'Brockton Hospital and Brockton Neighborhood Health Clinic',
      '680 Centre St
Brockton, MA 02302',
      'Brockton',
      'MA',
      'Please email or call me first to arrange drop off at 401 316 3076 or a.s.debrito@gmail.com',
      'Yes',
      '42.0874254',
      '-70.991421'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brockton Hospital and Brockton Neighborhood Health Clinic'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

COMMIT;
