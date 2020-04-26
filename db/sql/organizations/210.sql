
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
      'Bluebonnet Trails Community Services',
      '275 Ellinger Road
La Grange, TX 78945',
      'La Grange',
      'TX',
      'At La Grange Behavioral Health. Curbside or mail ',
      'Yes',
      '29.9126741',
      '-96.8618627'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bluebonnet Trails Community Services'
        AND o.latitude = '29.9126741'
        AND o.longitude = '-96.8618627'));

COMMIT;
