
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
      'Foxhall Ob/Gyn Associates',
      '5215 Loughboro Rd NW #500
Washington, DC 20016',
      'WASHINGTON',
      'DC',
      '5215 LOUGHBORO ROAD NW
Suite 500, Attention KIM',
      'No',
      '38.9369997',
      '-77.1074353'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foxhall Ob/Gyn Associates'
        AND o.latitude = '38.9369997'
        AND o.longitude = '-77.1074353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foxhall Ob/Gyn Associates'
        AND o.latitude = '38.9369997'
        AND o.longitude = '-77.1074353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foxhall Ob/Gyn Associates'
        AND o.latitude = '38.9369997'
        AND o.longitude = '-77.1074353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foxhall Ob/Gyn Associates'
        AND o.latitude = '38.9369997'
        AND o.longitude = '-77.1074353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foxhall Ob/Gyn Associates'
        AND o.latitude = '38.9369997'
        AND o.longitude = '-77.1074353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foxhall Ob/Gyn Associates'
        AND o.latitude = '38.9369997'
        AND o.longitude = '-77.1074353'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foxhall Ob/Gyn Associates'
        AND o.latitude = '38.9369997'
        AND o.longitude = '-77.1074353'));

COMMIT;
