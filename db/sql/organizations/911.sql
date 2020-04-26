
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
      'Milford Regional Laboratory',
      '117 Water St Suite 205
Hopedale, MA 01747',
      'Milford',
      'MA',
      'Attn: Dr. Bakowitz, Milford Anesthesia Associates',
      'Yes',
      '42.1221817',
      '-71.5308508'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Respirators (Medical or industrial)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('P100',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('FFP3',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('FFP2',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('respirator filters',
    (SELECT id FROM organizations o
      WHERE o.name = 'Milford Regional Laboratory'
        AND o.latitude = '42.1221817'
        AND o.longitude = '-71.5308508'));

COMMIT;
