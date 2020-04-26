
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
      'Manatee Memorial Hospital',
      '206 2nd St E
Bradenton, FL 34208',
      'Bradenton',
      'FL',
      'Main Entrance at North/River side of building',
      'Yes',
      '27.4972631',
      '-82.5621778'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Manatee Memorial Hospital'
        AND o.latitude = '27.4972631'
        AND o.longitude = '-82.5621778'));

COMMIT;
