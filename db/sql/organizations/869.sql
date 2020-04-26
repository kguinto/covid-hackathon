
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
      'Aventura at Prospect ',
      '815 Chester Pike
Prospect Park, PA 19076',
      'Prospect Park',
      'PA',
      'Drop off at reception desk',
      'No',
      '39.8824581',
      '-75.3073715'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aventura at Prospect '
        AND o.latitude = '39.8824581'
        AND o.longitude = '-75.3073715'));

COMMIT;
