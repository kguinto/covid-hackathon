
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
      'Harrison Springs Health Campus',
      '871 Pacer Dr NW
Corydon, IN 47112',
      'Corydon',
      'IN',
      'Please contact Lori Hess 812-738-0317',
      'Unsure',
      '38.237712',
      '-86.144413'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harrison Springs Health Campus'
        AND o.latitude = '38.237712'
        AND o.longitude = '-86.144413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harrison Springs Health Campus'
        AND o.latitude = '38.237712'
        AND o.longitude = '-86.144413'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harrison Springs Health Campus'
        AND o.latitude = '38.237712'
        AND o.longitude = '-86.144413'));

COMMIT;
