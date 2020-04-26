
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
      'Apex Urgent Care Clinic',
      '6111 N Fry Road
Katy, TX 77449',
      'Katy',
      'TX',
      'mail, drop off, local pick up',
      'Unsure',
      '29.861933',
      '-95.7212824'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex Urgent Care Clinic'
        AND o.latitude = '29.861933'
        AND o.longitude = '-95.7212824'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex Urgent Care Clinic'
        AND o.latitude = '29.861933'
        AND o.longitude = '-95.7212824'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex Urgent Care Clinic'
        AND o.latitude = '29.861933'
        AND o.longitude = '-95.7212824'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex Urgent Care Clinic'
        AND o.latitude = '29.861933'
        AND o.longitude = '-95.7212824'));

COMMIT;
