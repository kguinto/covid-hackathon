
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
      'Amedisys home health agency',
      '67 Hunt St
Agawam, MA 01001',
      'Agawam',
      'MA',
      'Send email to obtain mailing or drop off instructions. Kristen.howe@amedisys.com',
      'No',
      '42.0829762',
      '-72.5939804'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amedisys home health agency'
        AND o.latitude = '42.0829762'
        AND o.longitude = '-72.5939804'));

COMMIT;
