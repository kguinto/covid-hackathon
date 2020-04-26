
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
      'Oklahoma Heart Hospital',
      '4050 W Memorial Rd
Oklahoma City, OK 73120',
      'Oklahoma City',
      'OK',
      'Dropoff or mail to 4050 West Memorial Road. OKC, Ok 73132',
      'Yes',
      '35.6080415',
      '-97.59719'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma Heart Hospital'
        AND o.latitude = '35.6080415'
        AND o.longitude = '-97.59719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma Heart Hospital'
        AND o.latitude = '35.6080415'
        AND o.longitude = '-97.59719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma Heart Hospital'
        AND o.latitude = '35.6080415'
        AND o.longitude = '-97.59719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma Heart Hospital'
        AND o.latitude = '35.6080415'
        AND o.longitude = '-97.59719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma Heart Hospital'
        AND o.latitude = '35.6080415'
        AND o.longitude = '-97.59719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oklahoma Heart Hospital'
        AND o.latitude = '35.6080415'
        AND o.longitude = '-97.59719'));

COMMIT;
