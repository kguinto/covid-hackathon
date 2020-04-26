
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
      'ConvenientMD Urgent Care',
      '950 Main St
Westbrook, ME 04092',
      'Westbrook',
      'ME',
      'Delivery or can pick up',
      'Unsure',
      '43.6769804',
      '-70.370959'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.6769804'
        AND o.longitude = '-70.370959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.6769804'
        AND o.longitude = '-70.370959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.6769804'
        AND o.longitude = '-70.370959'));

COMMIT;
