
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
      'Rufino G Talatala, MD, PA',
      '4221 Medical Pkwy #250
Carrollton, TX 75010',
      'Carrolllton ',
      'TX',
      'Front door',
      'Yes',
      '29.8888838',
      '-97.9430682'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rufino G Talatala, MD, PA'
        AND o.latitude = '29.8888838'
        AND o.longitude = '-97.9430682'));

COMMIT;
