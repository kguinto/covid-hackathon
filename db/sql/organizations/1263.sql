
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
      'Hancock County Health System',
      '532 1st St NW
Britt, IA 50423',
      'Britt',
      'IA',
      'Donation box is located just inside the doors at the front entrance.',
      'Yes',
      '43.0982377',
      '-93.8080765'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hancock County Health System'
        AND o.latitude = '43.0982377'
        AND o.longitude = '-93.8080765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hancock County Health System'
        AND o.latitude = '43.0982377'
        AND o.longitude = '-93.8080765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hancock County Health System'
        AND o.latitude = '43.0982377'
        AND o.longitude = '-93.8080765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hancock County Health System'
        AND o.latitude = '43.0982377'
        AND o.longitude = '-93.8080765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hancock County Health System'
        AND o.latitude = '43.0982377'
        AND o.longitude = '-93.8080765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hancock County Health System'
        AND o.latitude = '43.0982377'
        AND o.longitude = '-93.8080765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hancock County Health System'
        AND o.latitude = '43.0982377'
        AND o.longitude = '-93.8080765'));

COMMIT;
