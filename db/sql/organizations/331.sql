
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
      'OB/Gyn Associates of Hollan',
      ' 664 Michigan Ave
Holland, MI 49423',
      'Holland',
      'MI',
      'Attn: Dawn Dauchy/Sarah Strong DO',
      'Yes',
      '42.772325',
      '-86.11478'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometer covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OB/Gyn Associates of Hollan'
        AND o.latitude = '42.772325'
        AND o.longitude = '-86.11478'));

COMMIT;
