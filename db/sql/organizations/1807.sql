
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
      'The Reutlinger Community ',
      '4000 Camino Tassajara
Danville, CA 94506',
      'Danville',
      'CA',
      '',
      'Yes',
      '37.7985621',
      '-121.9061522'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Reutlinger Community '
        AND o.latitude = '37.7985621'
        AND o.longitude = '-121.9061522'));

COMMIT;
