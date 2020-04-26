
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
      'Laurels of Hendersonville',
      '290 Clear Creek Rd
Hendersonville, NC 28792',
      'Hendersonville',
      'NC',
      'Mail or come by front door and ring bell.  Open 24/7',
      'Yes',
      '35.3430234',
      '-82.4565738'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laurels of Hendersonville'
        AND o.latitude = '35.3430234'
        AND o.longitude = '-82.4565738'));

COMMIT;
