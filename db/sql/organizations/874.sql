
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
      'El Camino Health',
      '2400 Grant Road
Mountain View, CA 94040',
      'Mountain View',
      'CA',
      'Mailing address is 2500 Grant Road, Mountain View, CA 94040, ATTN: DONATION
To schedule a drop off, please contact the Foundation at foundation@elcaminohealth.org',
      'No',
      '37.3706448',
      '-122.0786846'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Camino Health'
        AND o.latitude = '37.3706448'
        AND o.longitude = '-122.0786846'));

COMMIT;
