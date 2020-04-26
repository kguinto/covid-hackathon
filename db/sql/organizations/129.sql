
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
      'Signature Healthcare Brockton Hospital',
      '680 Centre Street
Brockton, MA 02302',
      'Brockton',
      'MA',
      'Deliver to ER at Brockton Hospital (have only 1 wk''s supplies)',
      'Yes',
      '42.0874254',
      '-70.991421'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare Brockton Hospital'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare Brockton Hospital'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare Brockton Hospital'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare Brockton Hospital'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Signature Healthcare Brockton Hospital'
        AND o.latitude = '42.0874254'
        AND o.longitude = '-70.991421'));

COMMIT;
