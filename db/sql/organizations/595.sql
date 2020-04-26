
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
      '987 Main St
Weymouth, MA 02190',
      'Weymouth',
      'MA',
      'Pick up, drop off, or mail in
ATTN:Practice Manager',
      'Unsure',
      '42.1710988',
      '-70.9555947'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1710988'
        AND o.longitude = '-70.9555947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1710988'
        AND o.longitude = '-70.9555947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1710988'
        AND o.longitude = '-70.9555947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.1710988'
        AND o.longitude = '-70.9555947'));

COMMIT;
