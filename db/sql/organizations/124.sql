
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
      'American Mercy Home Care',
      '4000 Smith Road, Suite 200
Cincinnati, OH 45209',
      'Cincinnati ',
      'OH',
      'Amy Owens',
      'Yes',
      '39.1509986',
      '-84.4457297'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'American Mercy Home Care'
        AND o.latitude = '39.1509986'
        AND o.longitude = '-84.4457297'));

COMMIT;
