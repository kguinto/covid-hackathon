
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
      'Johnston Memorial Hospital',
      '16000 Johnston Memorial Dr
Abingdon, VA 24211',
      'Abingdon',
      'VA',
      'Curbside ',
      'No',
      '36.7226195',
      '-81.9117949'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Johnston Memorial Hospital'
        AND o.latitude = '36.7226195'
        AND o.longitude = '-81.9117949'));

COMMIT;
