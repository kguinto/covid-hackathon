
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
      'Avamere Rehabilitation of Hillsboro',
      '650 SE Oak St
Hillsboro, OR 97123',
      'Hillsboro',
      'OR',
      'Please place items inside the double doors on the Walnut St. entrance NOT the Oak St entrance. ',
      'No',
      '45.5183706',
      '-122.9794217'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere Rehabilitation of Hillsboro'
        AND o.latitude = '45.5183706'
        AND o.longitude = '-122.9794217'));

COMMIT;
